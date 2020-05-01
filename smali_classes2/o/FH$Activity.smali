.class public final Lo/FH$Activity;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final c:Lo/Bc;


# direct methods
.method public constructor <init>(Lo/Bc;)V
    .locals 1

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FH$Activity;->c:Lo/Bc;

    return-void
.end method


# virtual methods
.method public final a()Lo/Bc;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/FH$Activity;->c:Lo/Bc;

    return-object v0
.end method
