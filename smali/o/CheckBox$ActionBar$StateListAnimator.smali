.class public final Lo/CheckBox$ActionBar$StateListAnimator;
.super Lo/CheckBox$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CheckBox$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lo/CheckBox$ActionBar;-><init>(Lo/amc;)V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->j:I

    return v0
.end method