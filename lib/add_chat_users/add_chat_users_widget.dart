import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class AddChatUsersWidget extends StatefulWidget {
  const AddChatUsersWidget({
    Key? key,
    this.chat,
  }) : super(key: key);

  final ChatsRecord? chat;

  @override
  _AddChatUsersWidgetState createState() => _AddChatUsersWidgetState();
}

class _AddChatUsersWidgetState extends State<AddChatUsersWidget> {
  Map<UsersRecord, bool> checkboxListTileValueMap = {};
  List<UsersRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  List<UsersRecord> simpleSearchResults = [];
  TextEditingController? textController;
  ChatsRecord? groupChat;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 24,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF95A1AC),
            size: 24,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Friends to group chat',
              style: FlutterFlowTheme.of(context).subtitle1,
            ),
            Text(
              'Select the friends to add to chat.',
              style: FlutterFlowTheme.of(context).bodyText2,
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(0),
            ),
            alignment: AlignmentDirectional(0, 0),
            child: TextFormField(
              controller: textController,
              onChanged: (_) => EasyDebounce.debounce(
                'textController',
                Duration(milliseconds: 2000),
                () async {
                  await queryUsersRecordOnce()
                      .then(
                        (records) => simpleSearchResults = TextSearch(
                          records
                              .map(
                                (record) => TextSearchItem(record, [
                                  record.displayName!,
                                  record.email!,
                                  record.userName!
                                ]),
                              )
                              .toList(),
                        )
                            .search(currentUserDisplayName)
                            .map((r) => r.object)
                            .take(3)
                            .toList(),
                      )
                      .onError((_, __) => simpleSearchResults = [])
                      .whenComplete(() => setState(() {}));
                },
              ),
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Search for friends...',
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding: EdgeInsetsDirectional.fromSTEB(24, 14, 0, 0),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24,
                ),
                suffixIcon: textController!.text.isNotEmpty
                    ? InkWell(
                        onTap: () async {
                          textController?.clear();
                          await queryUsersRecordOnce()
                              .then(
                                (records) => simpleSearchResults = TextSearch(
                                  records
                                      .map(
                                        (record) => TextSearchItem(record, [
                                          record.displayName!,
                                          record.email!,
                                          record.userName!
                                        ]),
                                      )
                                      .toList(),
                                )
                                    .search(currentUserDisplayName)
                                    .map((r) => r.object)
                                    .take(3)
                                    .toList(),
                              )
                              .onError((_, __) => simpleSearchResults = [])
                              .whenComplete(() => setState(() {}));

                          setState(() {});
                        },
                        child: Icon(
                          Icons.clear,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      )
                    : null,
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Expanded(
            child: StreamBuilder<List<UsersRecord>>(
              stream: queryUsersRecord(
                limit: 50,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsersRecord> listViewUsersRecordList = snapshot.data!
                    .where((u) => u.uid != currentUserUid)
                    .toList();
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewUsersRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewUsersRecord =
                        listViewUsersRecordList[listViewIndex];
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 2, 2, 2),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        listViewUsersRecord.photoUrl,
                                        'https://picsum.photos/seed/495/600',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 0, 0, 0),
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    child: CheckboxListTile(
                                      value: checkboxListTileValueMap[
                                              listViewUsersRecord] ??=
                                          widget.chat!.users!.toList().contains(
                                              listViewUsersRecord.reference),
                                      onChanged: (newValue) async {
                                        setState(() => checkboxListTileValueMap[
                                            listViewUsersRecord] = newValue!);
                                      },
                                      title: Text(
                                        listViewUsersRecord.displayName!,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                      subtitle: Text(
                                        listViewUsersRecord.email!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x3314181B),
                    offset: Offset(0, -2),
                  )
                ],
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    groupChat = await FFChatManager.instance.addGroupMembers(
                      widget.chat!,
                      checkboxListTileCheckedItems
                          .map((e) => e.reference)
                          .toList(),
                    );
                    context.pop();

                    setState(() {});
                  },
                  text: 'Invite to Chat',
                  options: FFButtonOptions(
                    width: 45,
                    height: 40,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    textStyle: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
