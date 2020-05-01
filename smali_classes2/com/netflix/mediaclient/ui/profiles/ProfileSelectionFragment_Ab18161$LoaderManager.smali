.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$LoaderManager;->b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$LoaderManager;->b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    return-void
.end method
