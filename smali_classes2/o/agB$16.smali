.class final Lo/agB$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->a(Lo/TableLayout;)Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lo/agp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/TableLayout;


# direct methods
.method constructor <init>(Lo/TableLayout;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lo/agB$16;->d:Lo/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lo/agp;
    .locals 2

    .line 278
    new-instance v0, Lo/agp;

    iget-object v1, p0, Lo/agB$16;->d:Lo/TableLayout;

    invoke-direct {v0, v1}, Lo/agp;-><init>(Lo/TableLayout;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lo/agB$16;->c()Lo/agp;

    move-result-object v0

    return-object v0
.end method
