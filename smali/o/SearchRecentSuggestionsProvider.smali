.class public Lo/SearchRecentSuggestionsProvider;
.super Lo/PeriodicSync;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/PeriodicSync<",
        "Lo/SearchRecentSuggestionsProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/PeriodicSync;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Class;)Lo/SearchRecentSuggestionsProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/SearchRecentSuggestionsProvider;"
        }
    .end annotation

    .line 264
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    invoke-virtual {v0, p0}, Lo/SearchRecentSuggestionsProvider;->e(Ljava/lang/Class;)Lo/PeriodicSync;

    move-result-object p0

    check-cast p0, Lo/SearchRecentSuggestionsProvider;

    return-object p0
.end method

.method public static d(Lo/FileBackupHelperBase;)Lo/SearchRecentSuggestionsProvider;
    .locals 1

    .line 161
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    invoke-virtual {v0, p0}, Lo/SearchRecentSuggestionsProvider;->b(Lo/FileBackupHelperBase;)Lo/PeriodicSync;

    move-result-object p0

    check-cast p0, Lo/SearchRecentSuggestionsProvider;

    return-object p0
.end method

.method public static d(Lo/RestoreObserver;)Lo/SearchRecentSuggestionsProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lo/SearchRecentSuggestionsProvider;"
        }
    .end annotation

    .line 230
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    invoke-virtual {v0, p0}, Lo/SearchRecentSuggestionsProvider;->a(Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p0

    check-cast p0, Lo/SearchRecentSuggestionsProvider;

    return-object p0
.end method

.method public static e(Lo/PauseActivityItem;)Lo/SearchRecentSuggestionsProvider;
    .locals 1

    .line 63
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    invoke-virtual {v0, p0}, Lo/SearchRecentSuggestionsProvider;->d(Lo/PauseActivityItem;)Lo/PeriodicSync;

    move-result-object p0

    check-cast p0, Lo/SearchRecentSuggestionsProvider;

    return-object p0
.end method
