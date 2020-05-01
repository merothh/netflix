.class public final Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
.super Ljava/lang/Object;
.source "MdxTargetSelection.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

.field private selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;


# direct methods
.method public constructor <init>([Landroid/util/Pair;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "nf_mdx"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->TAG:Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p1, v2, [Landroid/util/Pair;

    :cond_0
    if-eqz p3, :cond_2

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Include all targets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->createListOfAllTargets([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Include ONLY remote targets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->createListOfRemoteTargetsOnly([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    goto :goto_0
.end method

.method private createListOfAllTargets([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->createLocalTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->createRemoteTarget(Landroid/util/Pair;)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private createListOfRemoteTargetsOnly([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->createRemoteTarget(Landroid/util/Pair;)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static toAdapterList(Landroid/content/Context;[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x7f08018d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDevicePositionByUUID(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "getDevicePositionByUUID:: Given UUID is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDevicePositionByUUID:: given device found on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "Selected device not found!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocalDevicePosition()I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Local device found on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "We do NOT have local device from Mobile UI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method

.method public getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    return-object v0
.end method

.method public getSelectedDevicePosition()I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-ne v2, v3, :cond_0

    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Selected device found on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "Selected device not found!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method

.method public getSelectedTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    return-object v0
.end method

.method public getTargets(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "We should never be here. No targets!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->toAdapterList(Landroid/content/Context;[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 4

    const/4 v3, 0x3

    const-string/jumbo v0, "nf_mdx"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User selected as target on position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v0, v0

    if-le v0, p1, :cond_2

    const-string/jumbo v0, "nf_mdx"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User selected as target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Target NOT found! This should NOT happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
