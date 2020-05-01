.class final Lo/UTFDataFormatException$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UTFDataFormatException;->d(Lo/Writer;Landroid/view/ViewGroup;Landroid/view/View;Lo/Spanned;Lo/UTFDataFormatException$TaskDescription;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Spanned;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Z

.field final synthetic e:Landroidx/fragment/app/Fragment;

.field final synthetic f:Lo/Writer;

.field final synthetic g:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/Spanned;Landroid/view/View;Lo/Writer;Landroid/graphics/Rect;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lo/UTFDataFormatException$2;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lo/UTFDataFormatException$2;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lo/UTFDataFormatException$2;->d:Z

    iput-object p4, p0, Lo/UTFDataFormatException$2;->a:Lo/Spanned;

    iput-object p5, p0, Lo/UTFDataFormatException$2;->c:Landroid/view/View;

    iput-object p6, p0, Lo/UTFDataFormatException$2;->f:Lo/Writer;

    iput-object p7, p0, Lo/UTFDataFormatException$2;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 627
    iget-object v0, p0, Lo/UTFDataFormatException$2;->e:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lo/UTFDataFormatException$2;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lo/UTFDataFormatException$2;->d:Z

    iget-object v3, p0, Lo/UTFDataFormatException$2;->a:Lo/Spanned;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/UTFDataFormatException;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/Spanned;Z)V

    .line 629
    iget-object v0, p0, Lo/UTFDataFormatException$2;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lo/UTFDataFormatException$2;->f:Lo/Writer;

    iget-object v2, p0, Lo/UTFDataFormatException$2;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lo/Writer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
