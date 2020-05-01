.class public final Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;->d:Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 34
    sget-object v0, Lo/ActionMenuPresenter;->e:Lo/ActionMenuPresenter;

    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v2, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;->b:Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;

    move-object v5, v2

    check-cast v5, Lcom/netflix/cl/model/TrackingInfo;

    const/4 v2, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lo/ActionMenuPresenter;->a(Lcom/netflix/cl/Logger;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    const-string p1, "com.netflix.mediaclient.android.sharing.impl.SHARE_URL"

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, "android.intent.extra.CHOSEN_COMPONENT"

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance p2, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$onReceive$$inlined$let$lambda$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$onReceive$$inlined$let$lambda$1;-><init>(Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;)V

    check-cast p2, Lo/alN;

    invoke-static {p1, v2, p2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_2
    return-void
.end method
