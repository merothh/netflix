.class final Lo/agB$23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->j(Lo/TableLayout;)Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lo/agm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/TableLayout;


# direct methods
.method constructor <init>(Lo/TableLayout;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lo/agB$23;->b:Lo/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lo/agm;
    .locals 2

    .line 324
    new-instance v0, Lo/agm;

    iget-object v1, p0, Lo/agB$23;->b:Lo/TableLayout;

    invoke-direct {v0, v1}, Lo/agm;-><init>(Lo/TableLayout;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lo/agB$23;->c()Lo/agm;

    move-result-object v0

    return-object v0
.end method