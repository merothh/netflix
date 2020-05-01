.class final Lo/UTFDataFormatException$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UTFDataFormatException;->d(Lo/Writer;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Lo/Writer;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/Writer;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lo/UTFDataFormatException$1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo/UTFDataFormatException$1;->d:Lo/Writer;

    iput-object p3, p0, Lo/UTFDataFormatException$1;->b:Landroid/view/View;

    iput-object p4, p0, Lo/UTFDataFormatException$1;->c:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lo/UTFDataFormatException$1;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/UTFDataFormatException$1;->i:Ljava/util/ArrayList;

    iput-object p7, p0, Lo/UTFDataFormatException$1;->h:Ljava/util/ArrayList;

    iput-object p8, p0, Lo/UTFDataFormatException$1;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 397
    iget-object v0, p0, Lo/UTFDataFormatException$1;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lo/UTFDataFormatException$1;->d:Lo/Writer;

    iget-object v2, p0, Lo/UTFDataFormatException$1;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lo/Writer;->d(Ljava/lang/Object;Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lo/UTFDataFormatException$1;->d:Lo/Writer;

    iget-object v1, p0, Lo/UTFDataFormatException$1;->a:Ljava/lang/Object;

    iget-object v2, p0, Lo/UTFDataFormatException$1;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lo/UTFDataFormatException$1;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Lo/UTFDataFormatException$1;->b:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lo/UTFDataFormatException;->e(Lo/Writer;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lo/UTFDataFormatException$1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    :cond_0
    iget-object v0, p0, Lo/UTFDataFormatException$1;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lo/UTFDataFormatException$1;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v1, p0, Lo/UTFDataFormatException$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, p0, Lo/UTFDataFormatException$1;->d:Lo/Writer;

    iget-object v2, p0, Lo/UTFDataFormatException$1;->j:Ljava/lang/Object;

    iget-object v3, p0, Lo/UTFDataFormatException$1;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lo/Writer;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lo/UTFDataFormatException$1;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v0, p0, Lo/UTFDataFormatException$1;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/UTFDataFormatException$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
