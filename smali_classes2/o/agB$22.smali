.class final Lo/agB$22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->i(Lo/TableLayout;)Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lo/agt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/TableLayout;


# direct methods
.method constructor <init>(Lo/TableLayout;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lo/agB$22;->b:Lo/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/agt;
    .locals 2

    .line 297
    new-instance v0, Lo/agt;

    iget-object v1, p0, Lo/agB$22;->b:Lo/TableLayout;

    invoke-direct {v0, v1}, Lo/agt;-><init>(Lo/TableLayout;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lo/agB$22;->b()Lo/agt;

    move-result-object v0

    return-object v0
.end method
