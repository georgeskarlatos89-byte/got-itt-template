.class public Lai/gotit/giap/exception/GIAPInvalidPropsPrefixException;
.super Lai/gotit/giap/exception/GIAPRuntimeException;
.source "GIAPInvalidPropsPrefixException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Custom prop can not start with \'_\' character."

    .line 5
    invoke-direct {p0, v0}, Lai/gotit/giap/exception/GIAPRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
