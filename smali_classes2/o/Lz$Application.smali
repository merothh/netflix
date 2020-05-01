.class public final Lo/Lz$Application;
.super Lo/Lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final a:Lo/Lz$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/Lz$Application;

    invoke-direct {v0}, Lo/Lz$Application;-><init>()V

    sput-object v0, Lo/Lz$Application;->a:Lo/Lz$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lo/Lz;-><init>(Lo/amc;)V

    return-void
.end method
