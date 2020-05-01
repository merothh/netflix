.class public final Lo/UP$SharedPreferences;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedPreferences"
.end annotation


# static fields
.field public static final d:Lo/UP$SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lo/UP$SharedPreferences;

    invoke-direct {v0}, Lo/UP$SharedPreferences;-><init>()V

    sput-object v0, Lo/UP$SharedPreferences;->d:Lo/UP$SharedPreferences;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
