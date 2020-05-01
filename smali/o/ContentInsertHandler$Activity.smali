.class Lo/ContentInsertHandler$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentProviderNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContentInsertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lo/ContentInsertHandler;


# direct methods
.method constructor <init>(Lo/ContentInsertHandler;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lo/ContentInsertHandler$Activity;->a:Lo/ContentInsertHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ContentInsertHandler$Activity;->a:Lo/ContentInsertHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
