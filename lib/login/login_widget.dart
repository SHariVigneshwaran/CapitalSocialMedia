import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailController;
  TextEditingController? passwordController;

  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  'https://i.pinimg.com/originals/7c/43/02/7c43024baeb30654674bcdcc61086a60.jpg',
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.8, -0.5),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                          child: GradientText(
                            'Capital',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Urbanist',
                                      fontSize: 60,
                                    ),
                            colors: [
                              Color(0xFFFF0000),
                              FlutterFlowTheme.of(context).gray200
                            ],
                            gradientDirection: GradientDirection.rtl,
                            gradientType: GradientType.linear,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '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',
                      ).image,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0x001A1F24),
                        FlutterFlowTheme.of(context).secondaryBackground
                      ],
                      stops: [0, 0.3],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 44, 24, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Welcome Back,',
                                style: FlutterFlowTheme.of(context).title1,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Access your account below or',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'createAccount',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 200),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Create Account',
                                    options: FFButtonOptions(
                                      width: 125,
                                      height: 28,
                                      color: Color(0x00FFFFFF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Urbanist',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            fontSize: 14,
                                          ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: TextFormField(
                                controller: emailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Your email...',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 20, 24, 20),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('forgotPassword');
                                  },
                                  text: 'Forgot Password?',
                                  options: FFButtonOptions(
                                    width: 170,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Urbanist',
                                          color: Color(0xC7E1FF16),
                                          fontSize: 14,
                                        ),
                                    elevation: 0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();

                                    final user = await signInWithEmail(
                                      context,
                                      emailController!.text,
                                      passwordController!.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    context.pushNamedAuth('homePage', mounted);
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 50,
                                    color: Color(0xC7E1FF16),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Urbanist',
                                          color: Colors.white,
                                        ),
                                    elevation: 2,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 12),
                          child: FFButtonWidget(
                            onPressed: () async {
                              GoRouter.of(context).prepareAuthEvent();
                              final user = await signInAnonymously(context);
                              if (user == null) {
                                return;
                              }

                              context.goNamedAuth('homePage', mounted);
                            },
                            text: 'Continue as guest',
                            options: FFButtonOptions(
                              width: 200,
                              height: 40,
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Urbanist',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    fontSize: 14,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
