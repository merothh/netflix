.class public Lo/SettingsSlicesContract;
.super Lo/SearchIndexableData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SearchIndexableData<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/SettingsSlicesContract;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/SettingsSlicesContract;

    invoke-direct {v0}, Lo/SettingsSlicesContract;-><init>()V

    sput-object v0, Lo/SettingsSlicesContract;->c:Lo/SettingsSlicesContract;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/SearchIndexableData;-><init>()V

    return-void
.end method

.method public static b()Lo/SettingsSlicesContract;
    .locals 1

    .line 8
    sget-object v0, Lo/SettingsSlicesContract;->c:Lo/SettingsSlicesContract;

    return-object v0
.end method
