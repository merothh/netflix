.class public final Lo/UP$ComponentCallbacks2;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentCallbacks2"
.end annotation


# static fields
.field public static final c:Lo/UP$ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lo/UP$ComponentCallbacks2;

    invoke-direct {v0}, Lo/UP$ComponentCallbacks2;-><init>()V

    sput-object v0, Lo/UP$ComponentCallbacks2;->c:Lo/UP$ComponentCallbacks2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
