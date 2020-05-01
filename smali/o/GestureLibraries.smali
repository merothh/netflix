.class public Lo/GestureLibraries;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GestureLibraries$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/GestureLibraries;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lo/GestureLibraries;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/GestureLibraries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/GestureLibraries;->c:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lo/GestureLibraries;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/GestureLibraries;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lo/GestureLibraries;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
