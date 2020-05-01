.class public Lo/SQLiteReadOnlyDatabaseException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SQLiteReadOnlyDatabaseException$VoiceInteractor;,
        Lo/SQLiteReadOnlyDatabaseException$PictureInPictureParams;,
        Lo/SQLiteReadOnlyDatabaseException$ActionBar;,
        Lo/SQLiteReadOnlyDatabaseException$Application;,
        Lo/SQLiteReadOnlyDatabaseException$TaskDescription;,
        Lo/SQLiteReadOnlyDatabaseException$LoaderManager;,
        Lo/SQLiteReadOnlyDatabaseException$Dialog;,
        Lo/SQLiteReadOnlyDatabaseException$PendingIntent;,
        Lo/SQLiteReadOnlyDatabaseException$Fragment;,
        Lo/SQLiteReadOnlyDatabaseException$FragmentManager;,
        Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;,
        Lo/SQLiteReadOnlyDatabaseException$Activity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Lo/SQLiteProgram;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 116
    :cond_0
    instance-of v1, p0, Lo/SQLiteProgram;

    if-eqz v1, :cond_1

    .line 117
    check-cast p0, Lo/SQLiteProgram;

    return-object p0

    .line 118
    :cond_1
    instance-of v1, p0, Lo/SQLiteDebug;

    if-eqz v1, :cond_2

    .line 119
    check-cast p0, Lo/SQLiteDebug;

    invoke-interface {p0}, Lo/SQLiteDebug;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lo/SQLiteReadOnlyDatabaseException;->c(Landroid/graphics/drawable/Drawable;)Lo/SQLiteProgram;

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    instance-of v1, p0, Lo/SQLiteDatabaseCorruptException;

    if-eqz v1, :cond_4

    .line 122
    check-cast p0, Lo/SQLiteDatabaseCorruptException;

    .line 123
    invoke-virtual {p0}, Lo/SQLiteDatabaseCorruptException;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 126
    invoke-virtual {p0, v2}, Lo/SQLiteDatabaseCorruptException;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 127
    invoke-static {v3}, Lo/SQLiteReadOnlyDatabaseException;->c(Landroid/graphics/drawable/Drawable;)Lo/SQLiteProgram;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
