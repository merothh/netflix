.class public final Lo/UW$Activity;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UW$Activity$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/UW$Activity$ActionBar;


# instance fields
.field private final b:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/UW$Activity$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/UW$Activity$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/UW$Activity;->d:Lo/UW$Activity$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$Activity;->e:Ljava/lang/String;

    iput p2, p0, Lo/UW$Activity;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 156
    iget v0, p0, Lo/UW$Activity;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/UW$Activity;->e:Ljava/lang/String;

    return-object v0
.end method
