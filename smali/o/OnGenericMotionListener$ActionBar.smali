.class public Lo/OnGenericMotionListener$ActionBar;
.super Lo/OnGenericMotionListener$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2081
    invoke-direct {p0}, Lo/OnGenericMotionListener$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/OnHoverListener;)V
    .locals 2

    .line 2121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2122
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2123
    invoke-interface {p1}, Lo/OnHoverListener;->e()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Lo/OnGenericMotionListener$ActionBar;->c:Ljava/lang/CharSequence;

    .line 2124
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Lo/OnGenericMotionListener$ActionBar;->b:Ljava/lang/CharSequence;

    .line 2125
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2126
    iget-boolean v0, p0, Lo/OnGenericMotionListener$ActionBar;->e:Z

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lo/OnGenericMotionListener$ActionBar;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$ActionBar;
    .locals 0

    .line 2111
    invoke-static {p1}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/OnGenericMotionListener$ActionBar;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
