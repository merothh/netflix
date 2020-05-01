.class public final Lo/YA$ActionBar;
.super Lo/YA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final c:Lo/Yw;


# direct methods
.method public constructor <init>(Lo/Yw;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lo/YA;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/YA$ActionBar;->c:Lo/Yw;

    return-void
.end method


# virtual methods
.method public final e()Lo/Yw;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/YA$ActionBar;->c:Lo/Yw;

    return-object v0
.end method
