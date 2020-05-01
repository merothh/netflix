.class Lo/xd$StateListAnimator;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lo/xd;


# direct methods
.method private constructor <init>(Lo/xd;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/xd$StateListAnimator;->c:Lo/xd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/xd;Lo/xd$2;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lo/xd$StateListAnimator;-><init>(Lo/xd;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lo/xd$StateListAnimator;->c:Lo/xd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/xd;->onChange(Z)V

    :cond_0
    return-void
.end method
