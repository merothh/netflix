.class final Lo/BulkCursorDescriptor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BulkCursorDescriptor;->e(Ljava/lang/Throwable;)Lo/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Lo/XmlResourceParser<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/BulkCursorDescriptor$2;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/BulkCursorDescriptor$2;->d:Ljava/lang/Throwable;

    invoke-static {v0}, Lo/BulkCursorDescriptor;->b(Ljava/lang/Throwable;)Lo/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lo/BulkCursorDescriptor$2;->b()Lo/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method
