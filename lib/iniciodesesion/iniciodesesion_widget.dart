import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IniciodesesionWidget extends StatefulWidget {
  const IniciodesesionWidget({Key key}) : super(key: key);

  @override
  _IniciodesesionWidgetState createState() => _IniciodesesionWidgetState();
}

class _IniciodesesionWidgetState extends State<IniciodesesionWidget> {
  TextEditingController confrimarContraselaController1;
  TextEditingController contraseaController;
  TextEditingController emailAddressController1;
  TextEditingController emailAddressController2;
  TextEditingController confrimarContraselaController2;
  TextEditingController confrimarContraselaController3;
  TextEditingController emailAddressLoginController;
  TextEditingController passwordLoginController;
  bool passwordLoginVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confrimarContraselaController1 = TextEditingController();
    contraseaController = TextEditingController();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
    confrimarContraselaController2 = TextEditingController();
    confrimarContraselaController3 = TextEditingController();
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF003333),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'HomePage'),
              ),
            );
          },
          child: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 24,
          ),
        ),
        title: Text(
          'Perfil',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).secondaryBackground,
                fontSize: 35,
              ),
        ),
        actions: [],
        centerTitle: false,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Color(0xFF004D40),
                          labelStyle: GoogleFonts.getFont(
                            'Roboto',
                          ),
                          indicatorColor: Color(0xFF004D40),
                          tabs: [
                            Tab(
                              text: 'Iniciar sesión',
                            ),
                            Tab(
                              text: 'Registrate',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: emailAddressLoginController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Correo',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                        child: TextFormField(
                                          controller: passwordLoginController,
                                          obscureText: !passwordLoginVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Contraseña',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordLoginVisibility = !passwordLoginVisibility,
                                              ),
                                              focusNode: FocusNode(skipTraversal: true),
                                              child: Icon(
                                                passwordLoginVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => NavBarPage(initialPage: 'HomePage'),
                                              ),
                                            );
                                          },
                                          text: 'Iniciar',
                                          options: FFButtonOptions(
                                            width: 230,
                                            height: 60,
                                            color: Colors.white,
                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF004D40),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: emailAddressController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nombre',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: emailAddressController2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Apellido',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                        child: TextFormField(
                                          controller: contraseaController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Fecha de nacimiento',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                        child: TextFormField(
                                          controller: confrimarContraselaController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Correo',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                        child: TextFormField(
                                          controller: confrimarContraselaController2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Contraseña',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                        child: TextFormField(
                                          controller: confrimarContraselaController3,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Confirmar contraseña',
                                            labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (contraseaController?.text != confrimarContraselaController1?.text) {
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Passwords don\'t match!',
                                                  ),
                                                ),
                                              );
                                              return;
                                            }

                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => NavBarPage(initialPage: 'HomePage'),
                                              ),
                                            );
                                          },
                                          text: 'Crear cuenta',
                                          options: FFButtonOptions(
                                            width: 230,
                                            height: 60,
                                            color: Colors.white,
                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF004D40),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 8,
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
