.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$loadingAndErrorWrapper$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/EditText;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$loadingAndErrorWrapper$2;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/EditText;
    .locals 3

    .line 89
    new-instance v0, Lo/EditText;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$loadingAndErrorWrapper$2;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$loadingAndErrorWrapper$2;->d()Lo/EditText;

    move-result-object v0

    return-object v0
.end method
