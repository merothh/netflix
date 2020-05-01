.class final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$2;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$2;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$1$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
