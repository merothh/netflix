.class public final Lo/Ob$Activity;
.super Lo/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final a:Lo/Ob$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/Ob$Activity;

    invoke-direct {v0}, Lo/Ob$Activity;-><init>()V

    sput-object v0, Lo/Ob$Activity;->a:Lo/Ob$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lo/Ob;-><init>(Lo/amc;)V

    return-void
.end method
