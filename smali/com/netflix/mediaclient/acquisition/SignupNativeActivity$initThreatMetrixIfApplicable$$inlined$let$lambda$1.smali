.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->initThreatMetrixIfApplicable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $threatMetrixSessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;->$threatMetrixSessionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    sget-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$ThreatMetrix;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$ThreatMetrix;

    .line 556
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    check-cast v1, Landroid/content/Context;

    .line 557
    invoke-virtual {p1}, Lo/Am;->H()Lo/Ak;

    move-result-object v2

    const-string v3, "it.signUpParams"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/Ak;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.signUpParams.signUpBootloader"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$initThreatMetrixIfApplicable$$inlined$let$lambda$1;->$threatMetrixSessionId:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Lo/Am;->k()Lo/ds;

    move-result-object p1

    const-string v4, "it.esnProvider"

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object p1

    const-string v4, "it.esnProvider.esn"

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$ThreatMetrix;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
