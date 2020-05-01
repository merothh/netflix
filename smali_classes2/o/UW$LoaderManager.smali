.class public final Lo/UW$LoaderManager;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# static fields
.field public static final c:Lo/UW$LoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lo/UW$LoaderManager;

    invoke-direct {v0}, Lo/UW$LoaderManager;-><init>()V

    sput-object v0, Lo/UW$LoaderManager;->c:Lo/UW$LoaderManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    return-void
.end method
