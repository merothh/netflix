.class final Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$Activity;->a:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$Activity;->a:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object p1

    invoke-virtual {p1}, Lo/Range;->h()V

    return-void
.end method
