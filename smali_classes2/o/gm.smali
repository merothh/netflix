.class public final Lo/gm;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gm$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/gm$ActionBar;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gm$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gm$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/gm;->c:Lo/gm$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/gm;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ppinbetween_unification_productization"

    return-object v0
.end method
