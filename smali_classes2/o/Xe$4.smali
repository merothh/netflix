.class public final Lo/Xe$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RemoteViewsService$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xe;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Xe$Activity;


# direct methods
.method constructor <init>(Lo/Xe$Activity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lo/Xe$4;->b:Lo/Xe$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lo/Xe$4;->b:Lo/Xe$Activity;

    invoke-virtual {v0, p1, p2, p3}, Lo/Xe$Activity;->a(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method
