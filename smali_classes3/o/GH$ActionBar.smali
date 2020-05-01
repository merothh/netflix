.class public final Lo/GH$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ExtrasFeedActivity"

    .line 31
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/GH$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Lo/u$TaskDescription$StateListAnimator;)Landroid/content/Intent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/GH;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_4

    .line 36
    invoke-virtual {p2}, Lo/u$TaskDescription$StateListAnimator;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lo/u$TaskDescription$StateListAnimator;->a()Z

    move-result v1

    invoke-virtual {p2}, Lo/u$TaskDescription$StateListAnimator;->b()Ljava/lang/Integer;

    move-result-object p2

    .line 37
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    .line 132
    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 133
    check-cast p1, Ljava/lang/String;

    const-string v2, "featured_video_id"

    .line 38
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    .line 40
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "remind_me_track_id"

    .line 41
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const-string p1, "add_to_remind_me"

    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method
