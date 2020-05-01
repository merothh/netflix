.class public final Lo/UP$ContentResolver;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentResolver"
.end annotation


# static fields
.field public static final c:Lo/UP$ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Lo/UP$ContentResolver;

    invoke-direct {v0}, Lo/UP$ContentResolver;-><init>()V

    sput-object v0, Lo/UP$ContentResolver;->c:Lo/UP$ContentResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
