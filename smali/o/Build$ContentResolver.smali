.class public final Lo/Build$ContentResolver;
.super Lo/Build;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentResolver"
.end annotation


# static fields
.field public static final c:Lo/Build$ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/Build$ContentResolver;

    invoke-direct {v0}, Lo/Build$ContentResolver;-><init>()V

    sput-object v0, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lo/Build;-><init>(Lo/amc;)V

    return-void
.end method
