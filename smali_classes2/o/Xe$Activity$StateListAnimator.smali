.class final Lo/Xe$Activity$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xe$Activity;->a(Landroid/widget/SeekBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/SeekBar;

.field final synthetic c:I

.field final synthetic d:Lo/Xe$Activity;


# direct methods
.method constructor <init>(Lo/Xe$Activity;Landroid/widget/SeekBar;I)V
    .locals 0

    iput-object p1, p0, Lo/Xe$Activity$StateListAnimator;->d:Lo/Xe$Activity;

    iput-object p2, p0, Lo/Xe$Activity$StateListAnimator;->b:Landroid/widget/SeekBar;

    iput p3, p0, Lo/Xe$Activity$StateListAnimator;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 295
    iget-object v0, p0, Lo/Xe$Activity$StateListAnimator;->d:Lo/Xe$Activity;

    iget-object v1, p0, Lo/Xe$Activity$StateListAnimator;->b:Landroid/widget/SeekBar;

    iget v2, p0, Lo/Xe$Activity$StateListAnimator;->c:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lo/Xe$Activity;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
