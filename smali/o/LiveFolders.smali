.class Lo/LiveFolders;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:Lo/MetadataReader;


# direct methods
.method public constructor <init>(Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LiveFolders;->e:Lo/MetadataReader;

    iput-object p2, p0, Lo/LiveFolders;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/LiveFolders;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/LiveFolders;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/LiveFolders;->e:Lo/MetadataReader;

    iget-object v1, p0, Lo/LiveFolders;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/LiveFolders;->a:Ljava/lang/String;

    iget-object v3, p0, Lo/LiveFolders;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lo/MetadataReader;->c(Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
