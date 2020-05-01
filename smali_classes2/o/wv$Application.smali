.class public final Lo/wv$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static c:Lo/wv;

.field static final synthetic d:Lo/wv$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/wv$Application;

    invoke-direct {v0}, Lo/wv$Application;-><init>()V

    sput-object v0, Lo/wv$Application;->d:Lo/wv$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lo/wv;
    .locals 2

    .line 13
    sget-object v0, Lo/wv$Application;->c:Lo/wv;

    if-nez v0, :cond_0

    const-string v1, "playEventRepo"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
