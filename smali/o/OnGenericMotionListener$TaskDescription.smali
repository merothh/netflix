.class public Lo/OnGenericMotionListener$TaskDescription;
.super Lo/OnGenericMotionListener$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private g:Z

.field private j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1994
    invoke-direct {p0}, Lo/OnGenericMotionListener$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$TaskDescription;
    .locals 0

    .line 2023
    iput-object p1, p0, Lo/OnGenericMotionListener$TaskDescription;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public b(Lo/OnHoverListener;)V
    .locals 2

    .line 2042
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2043
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2044
    invoke-interface {p1}, Lo/OnHoverListener;->e()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Lo/OnGenericMotionListener$TaskDescription;->c:Ljava/lang/CharSequence;

    .line 2045
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Lo/OnGenericMotionListener$TaskDescription;->b:Landroid/graphics/Bitmap;

    .line 2046
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 2047
    iget-boolean v0, p0, Lo/OnGenericMotionListener$TaskDescription;->g:Z

    if-eqz v0, :cond_0

    .line 2048
    iget-object v0, p0, Lo/OnGenericMotionListener$TaskDescription;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 2050
    :cond_0
    iget-boolean v0, p0, Lo/OnGenericMotionListener$TaskDescription;->e:Z

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Lo/OnGenericMotionListener$TaskDescription;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method
