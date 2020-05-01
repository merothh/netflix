.class final Lo/UTFDataFormatException$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UTFDataFormatException;->e(Lo/Writer;Landroid/view/ViewGroup;Landroid/view/View;Lo/Spanned;Lo/UTFDataFormatException$TaskDescription;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Writer;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lo/Spanned;

.field final synthetic e:Lo/UTFDataFormatException$TaskDescription;

.field final synthetic f:Landroidx/fragment/app/Fragment;

.field final synthetic g:Z

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Landroidx/fragment/app/Fragment;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Ljava/lang/Object;

.field final synthetic o:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/Writer;Lo/Spanned;Ljava/lang/Object;Lo/UTFDataFormatException$TaskDescription;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lo/UTFDataFormatException$4;->a:Lo/Writer;

    iput-object p2, p0, Lo/UTFDataFormatException$4;->d:Lo/Spanned;

    iput-object p3, p0, Lo/UTFDataFormatException$4;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo/UTFDataFormatException$4;->e:Lo/UTFDataFormatException$TaskDescription;

    iput-object p5, p0, Lo/UTFDataFormatException$4;->b:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/UTFDataFormatException$4;->j:Landroid/view/View;

    iput-object p7, p0, Lo/UTFDataFormatException$4;->f:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Lo/UTFDataFormatException$4;->i:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Lo/UTFDataFormatException$4;->g:Z

    iput-object p10, p0, Lo/UTFDataFormatException$4;->h:Ljava/util/ArrayList;

    iput-object p11, p0, Lo/UTFDataFormatException$4;->k:Ljava/lang/Object;

    iput-object p12, p0, Lo/UTFDataFormatException$4;->o:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 739
    iget-object v0, p0, Lo/UTFDataFormatException$4;->a:Lo/Writer;

    iget-object v1, p0, Lo/UTFDataFormatException$4;->d:Lo/Spanned;

    iget-object v2, p0, Lo/UTFDataFormatException$4;->c:Ljava/lang/Object;

    iget-object v3, p0, Lo/UTFDataFormatException$4;->e:Lo/UTFDataFormatException$TaskDescription;

    invoke-static {v0, v1, v2, v3}, Lo/UTFDataFormatException;->c(Lo/Writer;Lo/Spanned;Ljava/lang/Object;Lo/UTFDataFormatException$TaskDescription;)Lo/Spanned;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Lo/UTFDataFormatException$4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lo/Spanned;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 744
    iget-object v1, p0, Lo/UTFDataFormatException$4;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/UTFDataFormatException$4;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    iget-object v1, p0, Lo/UTFDataFormatException$4;->f:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lo/UTFDataFormatException$4;->i:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Lo/UTFDataFormatException$4;->g:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lo/UTFDataFormatException;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/Spanned;Z)V

    .line 749
    iget-object v1, p0, Lo/UTFDataFormatException$4;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 750
    iget-object v2, p0, Lo/UTFDataFormatException$4;->a:Lo/Writer;

    iget-object v3, p0, Lo/UTFDataFormatException$4;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Lo/UTFDataFormatException$4;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lo/Writer;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 754
    iget-object v1, p0, Lo/UTFDataFormatException$4;->e:Lo/UTFDataFormatException$TaskDescription;

    iget-object v2, p0, Lo/UTFDataFormatException$4;->k:Ljava/lang/Object;

    iget-boolean v3, p0, Lo/UTFDataFormatException$4;->g:Z

    invoke-static {v0, v1, v2, v3}, Lo/UTFDataFormatException;->b(Lo/Spanned;Lo/UTFDataFormatException$TaskDescription;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v1, p0, Lo/UTFDataFormatException$4;->a:Lo/Writer;

    iget-object v2, p0, Lo/UTFDataFormatException$4;->o:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lo/Writer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
