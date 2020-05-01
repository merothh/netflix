.class final Lo/Vm$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->a(ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/Vm;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/Choice;


# direct methods
.method constructor <init>(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0

    iput-object p1, p0, Lo/Vm$Activity;->b:Lo/Vm;

    iput p2, p0, Lo/Vm$Activity;->a:I

    iput-object p3, p0, Lo/Vm$Activity;->d:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 438
    iget-object p1, p0, Lo/Vm$Activity;->b:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->a(Lo/Vm;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/Vm$Activity;->b:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->b(Lo/Vm;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lo/Vm$Activity;->b:Lo/Vm;

    iget v0, p0, Lo/Vm$Activity;->a:I

    iget-object v1, p0, Lo/Vm$Activity;->d:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-static {p1, v0, v1}, Lo/Vm;->e(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    :cond_0
    return-void
.end method
