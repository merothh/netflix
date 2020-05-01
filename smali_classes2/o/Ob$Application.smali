.class public final Lo/Ob$Application;
.super Lo/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final b:Lo/Ob$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lo/Ob$Application;

    invoke-direct {v0}, Lo/Ob$Application;-><init>()V

    sput-object v0, Lo/Ob$Application;->b:Lo/Ob$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lo/Ob;-><init>(Lo/amc;)V

    return-void
.end method
