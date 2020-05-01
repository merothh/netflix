.class final Lo/ImageButton$Activity;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final b:Lo/ImageButton;


# direct methods
.method public constructor <init>(Lo/ImageButton;)V
    .locals 1

    const-string v0, "netflixLottieAnimationView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lo/ImageButton$Activity;->b:Lo/ImageButton;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lo/ImageButton$Activity;->b:Lo/ImageButton;

    invoke-virtual {v0, p1}, Lo/ImageButton;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lo/ImageButton$Activity;->b:Lo/ImageButton;

    invoke-static {v0, p1}, Lo/ImageButton;->e(Lo/ImageButton;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
