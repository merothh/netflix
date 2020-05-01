.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 1771
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1775
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 1777
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Z)Z

    .line 1778
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Ljava/lang/String;)V

    return-void
.end method
