.class final Lo/agB$21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->h(Lo/TableLayout;)Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lo/agl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/TableLayout;


# direct methods
.method constructor <init>(Lo/TableLayout;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lo/agB$21;->c:Lo/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/agl;
    .locals 2

    .line 315
    new-instance v0, Lo/agl;

    iget-object v1, p0, Lo/agB$21;->c:Lo/TableLayout;

    invoke-direct {v0, v1}, Lo/agl;-><init>(Lo/TableLayout;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lo/agB$21;->b()Lo/agl;

    move-result-object v0

    return-object v0
.end method
