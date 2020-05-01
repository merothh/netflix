.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$LoaderManager;->c:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 233
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$LoaderManager;->c:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object p1

    invoke-virtual {p1}, Lo/Base64;->w()V

    return-void
.end method
