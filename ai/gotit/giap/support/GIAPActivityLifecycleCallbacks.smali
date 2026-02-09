.class public Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "GIAPActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private giapInstance:Lai/gotit/giap/GIAP;

.field private isBackground:Z


# direct methods
.method public constructor <init>(Lai/gotit/giap/GIAP;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->isBackground:Z

    .line 17
    iput-object p1, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->giapInstance:Lai/gotit/giap/GIAP;

    return-void
.end method


# virtual methods
.method getBackground()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->isBackground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "LIFECYCLE: created!"

    .line 22
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "LIFECYCLE: destroyed"

    .line 56
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->isBackground:Z

    const-string p1, "LIFECYCLE: foreground -> background"

    .line 32
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->giapInstance:Lai/gotit/giap/GIAP;

    invoke-virtual {p1}, Lai/gotit/giap/GIAP;->onPause()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 38
    iget-boolean p1, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->isBackground:Z

    if-eqz p1, :cond_0

    const-string p1, "LIFECYCLE: background -> foreground"

    .line 39
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->giapInstance:Lai/gotit/giap/GIAP;

    invoke-virtual {p1}, Lai/gotit/giap/GIAP;->onResume()V

    :cond_0
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lai/gotit/giap/support/GIAPActivityLifecycleCallbacks;->isBackground:Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "LIFECYCLE: stopped"

    .line 47
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->log(Ljava/lang/String;)V

    return-void
.end method
