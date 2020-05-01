.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecoverySystem$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 1539
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1543
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H()V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->G()V

    :goto_0
    return-void
.end method
