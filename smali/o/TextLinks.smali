.class public final Lo/TextLinks;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextLinks$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/TextLinks$StateListAnimator;


# instance fields
.field private final b:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TextLinks$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TextLinks$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/TextLinks;->c:Lo/TextLinks$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/alA;Lo/alB;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lo/TextLinks;->d:Lo/alA;

    iput-object p2, p0, Lo/TextLinks;->b:Lo/alB;

    iput-object p3, p0, Lo/TextLinks;->e:Lo/alB;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/common/api/Status;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    check-cast p2, Lcom/google/android/gms/common/api/Status;

    if-eqz p2, :cond_4

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    const-string v0, "SMSBroadcastReceiver"

    if-eqz p2, :cond_3

    const/16 p1, 0xf

    if-eq p2, p1, :cond_2

    const-string p1, "onError"

    .line 37
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lo/TextLinks;->e:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p1, "onTimeout"

    .line 33
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lo/TextLinks;->b:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p2, "onSuccess"

    .line 29
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p2, p0, Lo/TextLinks;->d:Lo/alA;

    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method
