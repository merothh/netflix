.class final Lo/Vm$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->d(ILcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ExpandableListAdapter;

.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic d:Lo/Vm;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/ExpandableListAdapter;Lo/Vm;Lcom/netflix/model/leafs/originals/interactive/Choice;I)V
    .locals 0

    iput-object p1, p0, Lo/Vm$StateListAnimator;->a:Lo/ExpandableListAdapter;

    iput-object p2, p0, Lo/Vm$StateListAnimator;->d:Lo/Vm;

    iput-object p3, p0, Lo/Vm$StateListAnimator;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput p4, p0, Lo/Vm$StateListAnimator;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 417
    iget-object p1, p0, Lo/Vm$StateListAnimator;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->a(Lo/Vm;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/Vm$StateListAnimator;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->b(Lo/Vm;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 418
    iget-object p1, p0, Lo/Vm$StateListAnimator;->d:Lo/Vm;

    iget v0, p0, Lo/Vm$StateListAnimator;->e:I

    iget-object v1, p0, Lo/Vm$StateListAnimator;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-static {p1, v0, v1}, Lo/Vm;->e(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    :cond_0
    return-void
.end method
