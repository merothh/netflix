.class public final Lo/Pe$ActionBar;
.super Lo/Pe;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Pe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final b:Lo/Pa;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/Pa;)V
    .locals 1

    const-string v0, "eventGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lo/Pe;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Pe$ActionBar;->e:Ljava/lang/String;

    iput-object p2, p0, Lo/Pe$ActionBar;->b:Lo/Pa;

    return-void
.end method


# virtual methods
.method public final d()Lo/Pa;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Pe$ActionBar;->b:Lo/Pa;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Pe$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method
