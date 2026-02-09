.class public Lai/gotit/giap/exception/GIAPInstanceExistsException;
.super Lai/gotit/giap/exception/GIAPRuntimeException;
.source "GIAPInstanceExistsException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Instance exists. Call getInstance() instead."

    .line 5
    invoke-direct {p0, v0}, Lai/gotit/giap/exception/GIAPRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
