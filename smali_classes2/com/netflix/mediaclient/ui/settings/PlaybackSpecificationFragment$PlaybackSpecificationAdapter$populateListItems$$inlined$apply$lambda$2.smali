.class final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;
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
.field final synthetic b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->e()Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    move-result-object v0

    sget-object v1, Lo/aaX;->b:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kw:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.label_unknown)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Full HD"

    goto :goto_0

    :cond_1
    const-string v0, "HD"

    goto :goto_0

    :cond_2
    const-string v0, "SD"

    :goto_0
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$PlaybackSpecificationAdapter$populateListItems$$inlined$apply$lambda$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
