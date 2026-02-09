.class public Lai/gotit/giap/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GIAP_LOG"

    .line 40
    invoke-static {p0}, Lai/gotit/giap/util/Logger;->constructMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Error"

    .line 36
    invoke-static {p0, v0}, Lai/gotit/giap/util/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "GIAP_LOG"

    .line 32
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->constructMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GIAP_LOG"

    .line 16
    invoke-static {p0}, Lai/gotit/giap/util/Logger;->constructMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GIAP_LOG"

    .line 28
    invoke-static {p0}, Lai/gotit/giap/util/Logger;->constructMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Warning"

    .line 24
    invoke-static {p0, v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "GIAP_LOG"

    .line 20
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->constructMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
