.class final Lo/agB$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lo/OneTimeUseBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/OneTimeUseBuilder;
    .locals 1

    .line 57
    new-instance v0, Lo/OneTimeUseBuilder;

    invoke-direct {v0}, Lo/OneTimeUseBuilder;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/agB$5;->b()Lo/OneTimeUseBuilder;

    move-result-object v0

    return-object v0
.end method
