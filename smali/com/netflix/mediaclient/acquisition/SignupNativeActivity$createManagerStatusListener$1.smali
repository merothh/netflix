.class public final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$updateCurrentAppLocale(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    .line 390
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$startNavigation(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$createManagerStatusListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "nf_signup_native"

    const-string p2, "NetflixService is NOT available!"

    .line 397
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
