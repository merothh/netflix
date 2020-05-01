.class public final Lo/UU$SharedPreferences;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedPreferences"
.end annotation


# static fields
.field public static final e:Lo/UU$SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/UU$SharedPreferences;

    invoke-direct {v0}, Lo/UU$SharedPreferences;-><init>()V

    sput-object v0, Lo/UU$SharedPreferences;->e:Lo/UU$SharedPreferences;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
