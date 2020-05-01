.class Lo/agB$26$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB$26;->b()Lcom/netflix/model/branches/FalkorBigRowData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/agB$26;


# direct methods
.method constructor <init>(Lo/agB$26;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lo/agB$26$3;->a:Lo/agB$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;
    .locals 1

    .line 368
    new-instance v0, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lo/agB$26$3;->a()Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    move-result-object v0

    return-object v0
.end method
